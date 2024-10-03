# GPT Video

![Screenshot of the App](/screenshot.jpg)

A next-generation AI interaction experience that reproduces the Gemini demo using GPT-4 Vision capabilities. This project enables real-time AI interactions with video input, similar to Google's Gemini demonstration.

## 🌌 Overview

This project explores the feasibility of creating genuine real-time AI interactions using OpenAI's GPT-4 Vision API. It captures video frames and processes them in real-time, allowing for natural conversations about what the AI sees.

## ✨ Live Demo

Visit the live demo at: [https://gpt-video-jidefr.vercel.app](https://gpt-video-jidefr.vercel.app)

**Note**: You'll need an OpenAI API key to use the demo. For security reasons, please remember to remove your API key after use.

## 🛠 Technical Stack

- **Frontend Framework**: Next.js with App Router
- **AI Integration**: Vercel AI SDK
- **APIs**: OpenAI's Whisper and GPT-4 Vision
- **Audio Processing**: Silence-aware recorder
- **Media Handling**: Custom media recorder hooks

## 🚀 Installation

1. Clone the repository:
```bash
git clone https://github.com/4mohdisa/Gemini-GPT4V.git
cd gpt-video
```

2. Install dependencies:
```bash
npm install
# or
yarn install
```

3. Set up environment variables:
Create a `.env.local` file with:
```
OPENAI_API_KEY=your_api_key_here
```

## 📁 Project Structure

```
gpt-video/
├── src/
│   └── app/
│       ├── api/
│       │   ├── chat/
│       │   ├── speechtotext/
│       │   ├── texttospeech/
│       │   └── upload/
│       ├── layout.js
│       └── page.js
```

### Key Components

- `api/chat/`: Handles GPT-4 Vision API interactions
- `api/speechtotext/`: Processes audio to text using Whisper
- `api/texttospeech/`: Converts text responses to speech
- `api/upload/`: Manages image upload and processing

## ⚙️ Configuration

Key constants in `/src/app/page.js`:
```javascript
const INTERVAL = 250;              // Screenshot interval
const IMAGE_WIDTH = 512;           // Image width for processing
const IMAGE_QUALITY = 0.6;         // JPEG quality
const COLUMNS = 4;                 // Grid columns
const MAX_SCREENSHOTS = 60;        // Maximum screenshots
const SILENCE_DURATION = 2500;     // Silence detection duration
const SILENT_THRESHOLD = -30;      // Silence threshold
```

## 📦 Dependencies

```json
{
  "dependencies": {
    "ai": "^2.2.28",
    "merge-images": "^2.0.0",
    "next": "14.0.4",
    "openai": "^4.21.0",
    "react": "^18",
    "react-dom": "^18",
    "silence-aware-recorder": "^1.0.4",
    "@wmik/use-media-recorder": "^1.6.5-beta.0",
    "use-camera": "^0.2.4",
    "uuid": "^9.0.1"
  }
}
```

## 🚀 Running the Project

1. Start the development server:
```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

2. Open [http://localhost:3000](http://localhost:3000) in your browser

## 🔧 API Endpoints

### Chat API (`/api/chat/route.js`)
- Handles GPT-4 Vision interactions
- Processes image grids and generates responses
- Supports multilingual outputs

### Speech-to-Text (`/api/speechtotext/route.js`)
- Uses OpenAI's Whisper for audio transcription
- Supports multiple languages
- Handles audio file processing

### Text-to-Speech (`/api/texttospeech/route.js`)
- Converts text responses to speech
- Uses OpenAI's TTS API
- Supports customizable voice and speed

### Upload API (`/api/upload/route.js`)
- Handles image upload and processing
- Generates unique IDs for files
- Supports base64 image data

## 🤝 Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues for improvements and bug fixes.

## 📄 License

This project is licensed under the MIT License. See the LICENSE file for details.